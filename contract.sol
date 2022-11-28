pragma solidity 0.8.16;

import "@openzeppelin/contracts/access/Ownable.sol";

Contract Conference is Ownable {
    struct Paper, Review;
    enum Vote, Status;
    
    mapping(address=>uint) reviewers;
    mapping(uint=>Paper) papers;
    mapping(uint=>Review) reviews;
    uint limit = 0;
    uint num_papers = 0;

    function registerReviewer(address _reviewerAddress) public onlyOwner {
        // function to hire a reviewer
    }

    function removeReviewer(address _reviewerAddress) public onlyOwner {
        // function to fire a reviewer
    }

    function viewPapersToBeReviewed() public view returns(Paper[]) {
        // function to view all the papers that havent been reviewed
    }

    function viewReviewedPapers() public view {
        // function to view all the papers (along with their review) that have been reviewed but arent accepted or rejected yet
    }

    function viewPublishedPapers() public view{
        // function to view all the papers that have been publshed
    }

    function setReviewNumber(uint _number) public onlyOwner {
        // function to set the number of votes needed for a decision to be made
        // on whether the review is accepted or rejected
    }

    function applyPaper(string _paperContent, address _publisher, address[] _authors) public {
        // function to send a paper to the conference
    }

    function addReview(string _reviewContent, uint _paperID) public OnlyReviewer {
        // function to submit a reviewer for a pending paper
        // can only be called by a reviewer
    }

    function addVote(Vote _vote, uint _paperID) public OnlyReviewer {
        // function to add a vote for a reviewed paper
        // can only be called by a reviewer
        // This function will check if there are enough votes to accept or reject the paper, 
        // and will accordingly take action (distributing funds and published paper or reverting review)
    }

}