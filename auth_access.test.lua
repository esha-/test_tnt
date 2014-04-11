--
-- Check a double create space
--
s = box.schema.create_space('test')
s = box.schema.create_space('test')
--
-- Check double create user
--
box.schema.user.create('testus')
box.schema.user.create('testus')
--
-- Check double grant
--
box.schema.user.grant('testus', 'read', 'space', 'test')
box.schema.user.grant('testus', 'read', 'space', 'test')

--
-- Check double drop user
--
box.schema.user.drop('testus')
box.schema.user.drop('testus')
--
-- Check double drop space
--
s:drop()
s:drop()

