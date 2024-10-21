enum AccessType {admin, user, denied}

AccessType generateAccess(){
  final bool hasAccess = true;
  final bool isOwner = false;

  return switch ((hasAccess, isOwner)) {
    (true, true) => AccessType.admin,
    (true, false) => AccessType.user,
    (_, _) => AccessType.denied,
  };
}
