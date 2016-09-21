DOM = React.DOM

window.CreateNewHumanForm = React.createClass
  getInitialState: ->
    {
      human: {
        firstName: '',
        lastName: ''
      }
    }

  firstNameChanged: (event)->
    @state.human.firstName = event.target.value
    @forceUpdate()


  lastNameChanged: (event)->
    @state.human.lastName = event.target.value
    @forceUpdate()

  render: ->
    DOM.form null,
      DOM.fieldset null,
        DOM.legend null, "New human"

        DOM.div null,
          DOM.label
            htmlFor: "firstName"
          DOM.input
            placeholder: "First name"
            id: "firstName"
            type: "text"
            value: @state.human.firstName
            onChange: @firstNameChanged

        DOM.div null,
          DOM.label
            htmlFor: "lastName"
          DOM.input
            placeholder: "Last name"
            id: "lastName"
            type: "text"
            value: @state.human.lastName
            onChange: @lastNameChanged

createNewHumanForm = React.createFactory(CreateNewHumanForm)