# Use Node image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package and install dependencies
COPY package*.json ./
RUN npm install

# Copy all project files
COPY . .

# Expose app port
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
