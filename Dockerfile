FROM node:22
WORKDIR /skitick
COPY . .
ARG MONGO_URI

# Set environment variable for the application
ENV MONGO_URI=${MONGO_URI}
RUN npm install
EXPOSE 3000
CMD ["npm", "start", "dev"]