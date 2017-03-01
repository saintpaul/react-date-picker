const aggregation = require("aggregation");
const React = require('react');
const RefluxListener = require('./RefluxListener');

class RefluxComponent extends aggregation(React.Component, RefluxListener) {

    constructor() {
        super();
        console.log("Test 4")
    }
}

module.exports = RefluxComponent;