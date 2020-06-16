const Agency   = require('../../models/Agency'),
      IRepositoryAgency = require('./IRepositoryAgencies');
      //util     = require('util');
      

class RespositoryAgencyMongoDb extends IRepositoryAgency{

    constructor(){
        console.log('creating InStAnCe of RespositoryAgencyMongoDb');
        super();
    };

    // fetch all agencies with their employees
    async getAgenciesWithEmployees() {
        let result;
        try{
            result = await Agency.find()
                .populate(
                    {
                        path: 'employees',
                        model: 'Employee'
                    }
                );
                return result;
        }catch(err){
            throw(err);
        }
    }

    // create a new agency
    async createAgency(agency) {
        let result;
        let myAgency = new Agency(
            {
                ...agence
            }
        );
        try{
            result = await myAgency.save();
            return result;
        }catch(err){
            throw(err);
        }
    }

    // fetch agency by its id with all its subobjects
    async getAgencyByIdWithAllItsSubObjects(id){
        let result;
        try{
            result = await Agency.findById(id)
                .populate(
                    {
                        path: 'employees',
                        model: 'Employee'
                    }
                )
                .populate(
                    {
                        path: 'subsidiaries',
                        model: 'Agency'
                    }
                );
            return result;
        }catch(err){
            throw(err);
        }
    }

    // fetch agency by its id without its subobjects
    async getAgencyByIdWithoutItsSubObjects(id){
        let result;
        try{
            result = await Agency.findById(id);
            return result;
        }catch(err){
            throw(err);
        }
    }

    // make modification to the agency document
    async updateAgency(agencyId, modification){
        let result;
        try{
            result = await Agency.findByIdAndUpdate(agencyId, {$set: modification}, {new: true});
            return result;
        }catch(err){
            throw(err);
        }
    }
}

module.exports = RespositoryAgencyMongoDb;








