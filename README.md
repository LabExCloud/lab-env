# lab enviornment

## Installation
disable secure boot

```
./setup-vagrant.sh
vagrant up
```

### Connect to vm using ssh
```
vagrant ssh
```

### Get repos and packages installed
```
./setup-repos.sh
```

### Running django server
```
python3 manage.py runserver 0.0.0.0:8000
```

### Running vue frontend
```
npm run serve
```
