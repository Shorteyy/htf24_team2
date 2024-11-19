connection: "htf2024"

# include all the views
include: "/views/**/*.view.lkml"



explore: discovery_facility {

}

explore: star {}

explore: discovery_telescope {
  join: discovery_facility {
    sql_on: ${discovery_telescope.facility_id} = ${discovery_facility.facility_id} ;;
    relationship: many_to_one
  }
}

explore: planet
{
  join: star {
    sql_on: ${planet.host_id} = ${star.host_id} ;;
    relationship: many_to_one
  }
  join: discovery_facility  {
    sql_on: ${planet.facility_id} = ${discovery_facility.facility_id} ;;
    relationship: many_to_one
  }

}

explore: raw_planets {}
