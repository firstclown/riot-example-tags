
<todo>

  <h3>{ opts.title }</h3>

  <ul>
    <li each={ items.filter(whatShow) }>
      <label class={ completed: done }>
        <input type="checkbox" checked={ done } onclick={ parent.toggle }> { title }
      </label>
    </li>
  </ul>

  <form onsubmit={ add }>
    <input ref="input" onkeyup={ edit }>
    <button disabled={ !text }>Add #{ items.filter(whatShow).length + 1 }</button>

    <button type="button" disabled={ items.filter(onlyDone).length == 0 } onclick={ removeAllDone }>
    X{ items.filter(onlyDone).length } </button>
  </form>

  <!-- this script tag is optional -->
  <script>
    this.items = opts.items

    edit(e) {
      this.text = e.target.value
    }

    add(e) {
      if (this.text) {
        this.items.push({ title: this.text })
        this.text = this.refs.input.value = ''
      }
      e.preventDefault()
    }

    removeAllDone(e) {
      this.items = this.items.filter(function(item) {
        return !item.done
      })
    }

    // an two example how to filter items on the list
    whatShow(item) {
      return !item.hidden
    }

    onlyDone(item) {
      return item.done
    }

    toggle(e) {
      var item = e.item
      item.done = !item.done
      return true
    }
  </script>

  <style type="text/css">
  todo {
  display: block;
  max-width: 400px;
  margin: 5% auto;
}

form input {
  font-size: 85%;
  padding: .4em;
  border: 1px solid #ccc;
  border-radius: 2px;
}

button {
  background-color: #1FADC5;
  border: 1px solid rgba(0,0,0,.2);
  font-size: 75%;
  color: #fff;
  padding: .4em 1.2em;
  border-radius: 2em;
  cursor: pointer;
  margin: 0 .23em;
  outline: none;
}

button[disabled] {
  background-color: #ddd;
  color: #aaa;
}

ul {
  padding: 0;
}

li {
  list-style-type: none;
  padding: .2em 0;
}

.completed {
  text-decoration: line-through;
  color: #ccc;
}

label {
  cursor: pointer;
}
  </style>
</todo>
