FROM node:16.5.0-alpine

WORKDIR /app

# add node_modules/.bin to $PATH
#ENV PATH /app/node_modules/.bin:$PATH
#RUN npm install -g npx

# add app
COPY . .

EXPOSE 80

# start app
CMD ["yarn", "run", "start", "--host", "0.0.0.0", "--port", "80"]
