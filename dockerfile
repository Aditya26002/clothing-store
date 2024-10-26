# Step 1: Use an official Node.js image as the base
FROM node:18-alpine

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy all the project files to the working directory
COPY . .

# Step 6: Build the Next.js app
RUN npm run build

# Step 7: Expose port 3000 to access the app
EXPOSE 3000

# Step 8: Start the app
CMD ["npm", "run", "start"]
