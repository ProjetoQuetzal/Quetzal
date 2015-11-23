# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# admin = Role.create(name: 'admin')
# member = Role.create(name: 'member')
# observer = Role.create(name: 'observer')


##### SuperUser ones

OperationRole.create(controller: 'operations', action: 'new')
OperationRole.create(controller: 'operations', action: 'create')
OperationRole.create(controller: 'operations', action: 'show')
OperationRole.create(controller: 'operations', action: 'edit')
OperationRole.create(controller: 'operations', action: 'update')
OperationRole.create(controller: 'operations', action: 'destroy')

OperationRole.create(controller: 'permissions', action: 'index')
OperationRole.create(controller: 'permissions', action: 'show')

OperationRole.create(controller: 'assignments', action: 'index')
OperationRole.create(controller: 'assignments', action: 'show')


##### Team/Role ones

OperationRole.create(controller: 'teams', action: 'new')
OperationRole.create(controller: 'teams', action: 'create')
OperationRole.create(controller: 'teams', action: 'show')
OperationRole.create(controller: 'teams', action: 'edit')
OperationRole.create(controller: 'teams', action: 'update')
OperationRole.create(controller: 'teams', action: 'manage_roles')
OperationRole.create(controller: 'teams', action: 'destroy')

OperationRole.create(controller: 'roles', action: 'index')
OperationRole.create(controller: 'roles', action: 'new')
OperationRole.create(controller: 'roles', action: 'create')
OperationRole.create(controller: 'roles', action: 'show')
OperationRole.create(controller: 'roles', action: 'edit')
OperationRole.create(controller: 'roles', action: 'update')
OperationRole.create(controller: 'roles', action: 'destroy')



###### Users

OperationUser.create(controller: 'users', action: 'new')
OperationUser.create(controller: 'users', action: 'create')
OperationUser.create(controller: 'users', action: 'show')
OperationUser.create(controller: 'users', action: 'edit')
OperationUser.create(controller: 'users', action: 'update')
OperationUser.create(controller: 'users', action: 'destroy')
OperationUser.create(controller: 'users', action: 'change_password')

