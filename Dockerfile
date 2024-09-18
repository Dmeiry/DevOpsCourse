FROM node:22
WORKDIR /skitick
COPY . .
ARG MONGO_URI

# Set environment variable for the application
ENV MONGO_URI=mongodb+srv://anas:zhphfYZsFG04ccgJ@cluster0.pqnw4.mongodb.net/skitick?retryWrites=true&w=majority&appName=Cluster0
RUN npm install
EXPOSE 3000
CMD ["npm", "start", "dev"]