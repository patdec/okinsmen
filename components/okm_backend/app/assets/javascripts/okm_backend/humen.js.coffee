DOM = React.DOM


FormRadioGender=React.createClass
  displayName: "FormRadioGender"
  render: ->
    DOM.label
      htmlFor: @props.id
      @props.label
      DOM.input
        id: @props.id
        type: 'radio'
        value: @props.value
        checked: @props.checked
        onClick: @props.onClick

FormInputWithLabel=React.createClass
  displayName: "FormInputWithLabel"
  getDefaultProps: ->
    elemenType: 'input',
    inputType: 'text'

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

formInputRadioGender=React.createFactory(FormRadioGender)
formInputWithLabel=React.createFactory(FormInputWithLabel)

window.CreateNewHumanForm = React.createClass
  displayName: "CreateNewHumanForm"
  getInitialState: ->
    {
      gender_female: false,
      gender_male: false,
      human: {
        gender: '',
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

  genderClicked: (event)->
    @state.human.gender=event.target.value
    if event.target.value=='male'
      @state.genderFemale=false
      @state.genderMale=true
    else
      @state.genderFemale=true
      @state.genderMale=false
    @forceUpdate()

  onSubmit: (event)->
    event.preventDefault()
    $.ajax(
      type: 'POST',
      dataType: 'json',
      contentType: 'application/json',
      url: '/humen.json',
      processData: false,
      data: JSON.stringify({human: @state.human})
      success: (response)->
        console.log(response)
    )

  render: ->
    DOM.form null,
      DOM.fieldset null,
        DOM.legend null, "New human"

        DOM.div null,
          formInputRadioGender
            id: 'maleGender'
            value: 'male'
            label: 'Male'
            onClick: @genderClicked
            checked: @state.genderMale
          formInputRadioGender
            id: 'femaleGender'
            value: 'female'
            label: 'Female'
            onClick: @genderClicked
            checked: @state.genderFemale

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

      DOM.button
        type: 'submit'
        value: 'ok'
        onClick: @onSubmit
        'Validate'

createNewHumanForm = React.createFactory(CreateNewHumanForm)