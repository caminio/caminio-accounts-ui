Caminio.SessionsSignupController = Ember.ObjectController.extend
  isOrganization: 'yes'
  organizationEnabled: (->
    @get('isOrganization') == 'yes'
  ).property 'isOrganization'
