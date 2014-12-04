React = require('react')

DirectoryForm = React.createClass
    _handleSubmit: (e) ->
        e.preventDefault()       

        data =
            name: @refs.name.getDOMNode().value.trim()
            position: @refs.position.getDOMNode().value.trim()
            email: @refs.email.getDOMNode().value.trim()

        if (data.name && data.position)
            # Pass data to callback 'this._handleDirectorySubmit'
            @props.onDirectorySubmit(data)

            # Reset field values after submit
            @refs.name.getDOMNode().value = ''
            @refs.position.getDOMNode().value = ''
            @refs.email.getDOMNode().value = ''

    render: ->
        <form className="commentForm" onSubmit={ this._handleSubmit }>
            <input type="text" name="name" placeholder="Name" ref="name" />
            <input type="text" name="position" placeholder="Position" ref="position" />
            <input type="email" name="email" placeholder="E-mail" ref="email" />
            <input type="submit" value="Add" className="small button" />
        </form>

module.exports = DirectoryForm