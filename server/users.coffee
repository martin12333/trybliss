Meteor.publish "directory", -> Meteor.users.find({}, fields: {emails: 1, profile: 1})
Levels.allow
  insert: ((userId, level)  -> true)
  update: ((userId, level) -> userId != null)
  remove: ((userId, level) -> userId == level.author)
