FROM node:alpine AS development

ENV NODE_ENV development

# Add a work directory
WORKDIR /app

# Cache dependencies
COPY package*.json .

# Install dependencies
RUN npm install

# Copy app files
COPY . .

# Expose port
EXPOSE 4200

# Start the app
CMD [ "npm", "run", "start" ]
