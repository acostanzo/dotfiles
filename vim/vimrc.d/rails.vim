let g:rails_projections = {
      \ "spec/javascript/*.spec.jsx": { "alternate": "app/javascript/{}.jsx" },
      \ "app/javascript/*.jsx": { "alternate": "spec/javascript/{}.spec.jsx" },
      \ "spec/javascript/*.spec.js": { "alternate": "app/javascript/{}.js" },
      \ "app/javascript/*.js": { "alternate": "spec/javascript/{}.spec.js" }
      \ }
