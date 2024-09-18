This will generate clients according to the yr.no swagger file.

## Download latest swagger file

```bash
./retrieve.sh
```

## Generate clients

```bash
./generate.sh
```

## Clients

### Node

#### Install
```bash
npm install @detecht/yr.no-client
```
#### Example usage

```typescript
import { DataApiFactory, Configuration } from "@detecht/yr.no-client"

const run = async () => {
  const config = new Configuration({
    baseOptions: {
      headers: {
        "User-Agent": "<yr requires your own user-agent>",
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