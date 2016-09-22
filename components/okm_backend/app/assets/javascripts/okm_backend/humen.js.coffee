DOM = React.DOM

FormInputWithLabel=React.createClass
  displayName: "FormInputWithLabel"
  getDefaultProps: {
    elemenType: 'input',
    inputType: 'text'
  }
  render: ->
    DOM.div null,
      DOM.label
        htmlFor: @props.id
      DOM[@props.elemenType]
        placeholder: @props.placeholder
        id: @props.id
        type: @tagType()
        value: @props.value
        onChange: @props.onchange
  tagType: ->
    {
      "input": @props.inputType,
      "textarea": null
    }[@props.elemenType]

formInputWithLabel=React.createFactory(FormInputWithLabel)

window.CreateNewHumanForm = React.createClass
  displayName: "CreateNewHumanForm"
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

        formInputWithLabel
          id: "firstName"
          type: "text"
          value: @state.human.firstName
          onchange: @firstNameChanged

        formInputWithLabel
          id: "lastName"
          type: "text"
          value: @state.human.lastName
          onchange: @lastNameChanged

createNewHumanForm = React.createFactory(CreateNewHumanForm)