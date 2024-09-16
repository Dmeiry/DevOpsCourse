FROM node:22
WORKDIR /skitick
COPY . .
RUN npm install
EXPOSE 3000
CMD ["npm", "start", "dev"]