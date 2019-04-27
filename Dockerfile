FROM node:8
# ARGS
ARG MODE 
# Workdir
WORKDIR /usr/src/app
# Copy package.json
COPY package.json ./
# Install
RUN npm install
# Copy the rest of the app
COPY . .
# Build app
RUN npm run $MODE 
# Expose port
EXPOSE 8080
# Start
CMD ["node", "server.js"]
