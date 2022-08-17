function getNestedData(object, path) {
  const pathArray = path.split('/')
  let tempObj = object
  pathArray.forEach(() => {
    for (let [objKey, value] of Object.entries(tempObj)) {
      if (!pathArray.includes(objKey)) {
        continue
      }
      tempObj = value
    }
  })

  return tempObj
}