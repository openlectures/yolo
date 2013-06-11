Ember.TEMPLATES["auth"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [3,'>= 1.0.0-rc.4'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', stack1, hashTypes, hashContexts, escapeExpression=this.escapeExpression, self=this;

function program1(depth0,data) {
  
  var buffer = '', hashTypes, hashContexts;
  data.buffer.push("\n  ");
  hashTypes = {};
  hashContexts = {};
  data.buffer.push(escapeExpression(helpers.view.call(depth0, "YOLo.AuthSignOutView", {hash:{},contexts:[depth0],types:["ID"],hashContexts:hashContexts,hashTypes:hashTypes,data:data})));
  data.buffer.push("\n");
  return buffer;
  }

function program3(depth0,data) {
  
  var buffer = '', hashTypes, hashContexts;
  data.buffer.push("\n  ");
  hashTypes = {};
  hashContexts = {};
  data.buffer.push(escapeExpression(helpers.view.call(depth0, "YOLo.AuthSignInView", {hash:{},contexts:[depth0],types:["ID"],hashContexts:hashContexts,hashTypes:hashTypes,data:data})));
  data.buffer.push("\n");
  return buffer;
  }

  hashTypes = {};
  hashContexts = {};
  stack1 = helpers['if'].call(depth0, "YOLo.Auth.signedIn", {hash:{},inverse:self.program(3, program3, data),fn:self.program(1, program1, data),contexts:[depth0],types:["ID"],hashContexts:hashContexts,hashTypes:hashTypes,data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("\n");
  return buffer;
  
});
