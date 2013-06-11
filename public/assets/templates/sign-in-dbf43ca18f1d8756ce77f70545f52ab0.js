Ember.TEMPLATES["sign-in"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [3,'>= 1.0.0-rc.4'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', hashContexts, hashTypes, escapeExpression=this.escapeExpression;


  data.buffer.push("<form><label>Email</label>");
  hashContexts = {'valueBinding': depth0};
  hashTypes = {'valueBinding': "ID"};
  data.buffer.push(escapeExpression(helpers.view.call(depth0, "Ember.TextField", {hash:{
    'valueBinding': ("view.email")
  },contexts:[depth0],types:["ID"],hashContexts:hashContexts,hashTypes:hashTypes,data:data})));
  data.buffer.push("<label>Password</label>");
  hashContexts = {'type': depth0,'valueBinding': depth0};
  hashTypes = {'type': "STRING",'valueBinding': "ID"};
  data.buffer.push(escapeExpression(helpers.view.call(depth0, "Ember.TextField", {hash:{
    'type': ("password"),
    'valueBinding': ("view.password")
  },contexts:[depth0],types:["ID"],hashContexts:hashContexts,hashTypes:hashTypes,data:data})));
  hashContexts = {'checkedBinding': depth0};
  hashTypes = {'checkedBinding': "ID"};
  data.buffer.push(escapeExpression(helpers.view.call(depth0, "Ember.Checkbox", {hash:{
    'checkedBinding': ("view.remember")
  },contexts:[depth0],types:["ID"],hashContexts:hashContexts,hashTypes:hashTypes,data:data})));
  data.buffer.push("<label>Remember me</label><button>Sign In</button></form>");
  return buffer;
  
});
