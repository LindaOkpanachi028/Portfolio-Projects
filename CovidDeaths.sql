
select * from 
PortfolioProjects.dbo.CovidDeaths$
where continent is not null
order by  3, 4

--selecting needed data
Select Location, date, total_cases,new_cases, total_deaths, population
FROM PortfolioProjects.dbo.CovidDeaths$
where continent is not null
	order by 1, 2 -- This sorts the result by default in ascending order, if you need it by descending order you need to add desc

--How many cases does each country have with respect to he number of deaths
--This basically shows the percentage of dying if you have covid in your country
Select Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
FROM PortfolioProjects.dbo.CovidDeaths$
where location like '%states%'
and continent is not null
order by 1, 2

--What percentage of the population has covid
Select Location, Max(total_cases) as HighestInfectionRate, population, Max(total_cases/population)*100 as PercentPopulationInfected
FROM PortfolioProjects.dbo.CovidDeaths$
where location like '%states%'
and continent is not null
	order by 1, 2

-- Let us take a look at Countries with the highest infection rate with regards to its population
Select continent, Max(total_cases) as HighestInfectionRate, population, Max(total_cases/population)*100 as PercentPopulationInfected
FROM PortfolioProjects.dbo.CovidDeaths$
where location like '%states%'
	Group By continent, population
	order by PercentPopulationInfected desc


--Breaking up the data by continent
Select continent, Max(cast(total_deaths as int)) as TotalDeathCount
FROM PortfolioProjects.dbo.CovidDeaths$
--where location like '%states%'
where continent is not null
	Group By continent
	order by TotalDeathCount desc

--Select location, Max(cast(total_deaths as int)) as TotalDeathCount
--FROM PortfolioProjects.dbo.CovidDeaths$
--where location like '%states%'
--where continent is null
--	Group By location
--	order by TotalDeathCount desc


--Let us look at highest death rate per population
--In situations, where yu use an inbuilt function and you dont get the required output
--check the datatype of the column and cast it to the necessary datatype
Select Location, Max(cast(total_deaths as int)) as TotalDeathCount
FROM PortfolioProjects.dbo.CovidDeaths$
--where location like '%states%'
where continent is not null
	Group By Location
	order by TotalDeathCount desc


-- Let us take a look at the continents with the highest deathcount per population

--Global numbers
--we cannot group by just the date, even if we wanted togroup by something, we need to look at aggregate functions on everything else
Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, 
	SUM(cast(new_deaths as int))/SUM(new_cases)* 100 as DeathPercentage
-- (total_deaths/total_cases)*100 as DeathPercentage
FROM PortfolioProjects.dbo.CovidDeaths$
--where location like '%states%'
where continent is not null
--Group by date
order by 1, 2

--What is the total amount of people in the world that have been vaccinated with respect to their population

--Looking at New vaccinations per day

--use CTE
With PopsVac(Continent, Location, Date, Population,New_Vaccinations, RollingPeopleVaccinated)
as
(
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM (cast(new_vaccinations as int))over (partition by dea.location order by dea.location, dea.date)
as RollingPeopleVaccinate --, (RollingPeopleVaccinated/population)*100
from PortfolioProjects.dbo.CovidDeaths$ dea
join PortfolioProjects.dbo.CovidVaccinations$ vac
	on dea.location= vac.location 
	and dea.date= vac.date
where dea.continent is not null
--order by 2, 3
)
Select *, (RollingPeopleVaccinated/Population) *100 As TotalPercentVaccinatedPerPopulation
from PopsVac



--Using a temp table

Drop Table if exists #PercentPopulationVaccinated
Create table #PercentPopulationVaccinated
(
Continent nvarchar(255),
Location nvarchar (255),
Date datetime,
Population numeric,
new_vaccinations numeric,
RollingPeopleVaccinated numeric)

--use CTE
--With PopsVac (Continent, Location, Date, Population, RollingPeopleVaccinated

--Now, lets create view we can use later for visualisation

Go
create view 
PercentPopulationVaccinated as
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM (cast(new_vaccinations as int))over (partition by dea.location order by dea.location, dea.date)
as RollingPeopleVaccinate --, (RollingPeopleVaccinated/population)*100
from PortfolioProjects.dbo.CovidDeaths$ dea
join PortfolioProjects.dbo.CovidVaccinations$ vac
	on dea.location= vac.location 
	and dea.date= vac.date
where dea.continent is not null
--order by 2, 3

Select * 
From PercentPopulationVaccinated
















