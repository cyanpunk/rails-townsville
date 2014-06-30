### ============================================================================
# => Roles
### ============================================================================

roles = [
  { name: 'townie', players_count_req: 4 },
  { name: 'mafioso', players_count_req: 4 },
  { name: 'sheriff', players_count_req: 5 },
  { name: 'doctor', players_count_req: 7 },
  { name: 'hustler', players_count_req: 9 },
  { name: 'maniac', players_count_req: 12 }
]

roles.each do |role|
  Role.find_or_create_by role.name
end
