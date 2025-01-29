# Use the official Cypress base image
FROM cypress/included:12.8.1

# Set the working directory in the container
WORKDIR /app

# Install dependencies (if you have a package.json)
COPY package.json package-lock.json ./
RUN npm install

# Copy your tests into the container (adjust the path if needed)
COPY . .

# Set the command to run Cypress tests
CMD ["npx", "cypress", "run"]
