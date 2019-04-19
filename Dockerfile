FROM node:8
# Workdir
WORKDIR /usr/src/app
# Copy package.json
COPY package.json ./
# Install
RUN npm install
# Copy the rest of the app
COPY . .
# Build app
RUN npm run build
# Expose port
EXPOSE 8080
# Start
CMD ["npm", "start"]
