import mongoose from "mongoose";

const connectDB = async () => {
    try {
        const db = await mongoose.connect("mongodb+srv://anas:zhphfYZsFG04ccgJ@cluster0.pqnw4.mongodb.net/skitick?retryWrites=true&w=majority&appName=Cluster0");
       // const db = await mongoose.connect(process.env.MONGO_URI);
        console.log(`MongoDB Connected : ${db.connection.host}`);
    } catch (error) {
        console.error(error);
    }
};

export default connectDB;