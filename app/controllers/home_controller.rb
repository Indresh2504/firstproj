class HomeController < ApplicationController

    def index
        
    end

    def registration

    end

    def create 
        stu=Student.new    # here Student is my DB Table
        stu.name=params[:sname]
        stu.branch=params[:sbranch]
        stu.phno=params[:sphno]
        stu.address=params[:saddress]
        stu.email=params[:smail]
        stu.save

        redirect_to("/list")
    end

    def list
        @student=Student.all

    end

    def modify
        @stu=Student.find(params[:id])
    end

    def update
        stu=Student.find(params[:id])
        stu.name=params[:sname]
        stu.branch=params[:sbranch]
        stu.phno=params[:sphno]
        stu.address=params[:saddress]
        stu.email=params[:smail]
        stu.save

        redirect_to("/list")
    end

    def delete

        Student.destroy(params[:id])

        redirect_to("/list")
    end
end