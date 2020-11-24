pragma solidity ^0.5.0;

contract Vote {
    int[2] public candidates;
    address[] private candidate_1;
    address[] private candidate_2;
    
    function vote(uint candidateId) public returns (uint) {
        require(candidateId >= 0 && candidateId <= 1);
        uint i = 0;
        
        for(i=0;i<candidate_1.length;i++){
            if(candidate_1[i] == msg.sender){
                return 404;
            }
        }
        for(i=0;i<candidate_2.length;i++){
            if(candidate_2[i] == msg.sender){
                return 404;
            }
        }
        if(candidateId==0){
            candidate_1.push(msg.sender);
        }
        if(candidateId==1){
            candidate_2.push(msg.sender);
        }
        candidates[candidateId] += 1;

        return candidateId;
    }
    // Retrieving the Votes
    function getVotes() public view returns (int[2] memory) {
        return candidates;
    }

}
