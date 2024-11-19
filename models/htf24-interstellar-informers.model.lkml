connection: "htf2024"

# include all the views
include: "/views/**/*.view.lkml"



explore: discovery_facility {}

explore: star {}

explore: discovery_telescope {}

explore: planet
{
  join: star {
    sql_on: ${planet.host_id} = ${star.host_id} ;;
    relationship: many_to_one
  }
}

explore: raw_planets {}
