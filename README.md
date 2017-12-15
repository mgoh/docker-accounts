# Using docker-compose to build accounts.cca.edu 

```
docker-compose build [web|migration]
docker-compose up
```

## Notes
* Drop in local_settings.py 
* Edit database info in local_settings.py
* add gdata to requirements.txt (should patch accounts.cca.edu)
