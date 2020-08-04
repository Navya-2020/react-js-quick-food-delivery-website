# pull official base image
FROM node:14

# set working directory
WORKDIR /react-js-quick-food-delivery-website


# add `/react-js-quick-food-delivery-website/node_modules/.bin` to $PATH
ENV PATH /react-js-quick-food-delivery-website/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./

RUN npm install 
RUN npm install react
RUN npm install react-scripts@3.4.1 -g 

# add app
COPY . ./

# start app
CMD ["npm", "start"]

EXPOSE 3000
