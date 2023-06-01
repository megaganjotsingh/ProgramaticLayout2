# ProgramaticLayout2

Easy to Use
  ---
  
  ### You can simply set all the properties in simple way

  ```swift
        YOURVIEW.fill(superview: view)
        YOURVIEW.anchor(superview: view, top: view.safeAreaLayoutGuide.topAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor)
        YOURVIEW.setHeight(50)
        YOURVIEW.setWidth(50)
        YOURVIEW.setSize(.init(width: 50, height: 50))
        YOURVIEW.centerVertically(at: view)
        YOURVIEW.centerHorizontally(at: view)
  ```
  
  Collaboration
---

I tried to build an easy to use API, but I'm sure there are ways of improving and adding more features, If you think that we can do the ProgramaticLayout2 more powerful please contribute with this project.
