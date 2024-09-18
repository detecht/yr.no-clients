This will generate clients according to the yr.no swagger file.

## Download latest swagger file

`npm run retrieve` and then add `"host": "api.met.no",` at the top of the json blob in the file `swagger.json` that was retrieved.

## Generate clients

`npm run generate`

## Clients

## Node

### Install
```bash
npm install yr.no-client
```
### Example usage

```typescript
import { DataApiFactory, Configuration } from "yr.no-node-client"

const run = async () => {
  const config = new Configuration({
    baseOptions: {
      headers: {
        "User-Agent": "yr.no-node-client",
      },
    },
  })
  const yr = DataApiFactory(config)
  const res = await yr.completeGet(57.68626233395837, 12.000835523583815)

  if (!res.data) return
  console.log(JSON.stringify(res.data, null, 2))
}

run()
```