import "stylesheets/application.scss";

import { Application } from "stimulus";
import { definitionsFromContext } from "stimulus/webpack-helpers";
import "jquery";
import "jquery-ujs";
import "bootstrap";

const application = Application.start();
const context = require.context("controllers", true, /\.js$/);
application.load(definitionsFromContext(context));
