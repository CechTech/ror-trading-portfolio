import 'stylesheets/application'

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
// The path you may like to change to under `pack` that path will be `./controllers`
// but convention will be in `/app/javascript/controllers`
const context = require.context("controllers", true, /\.js$/)
application.load(definitionsFromContext(context))

