pragma solidity 0.8.16;

enum Status{
    ADDED,
    REVIEWED,
    REJECTED,
    ACCEPTED
}

struct Paper{
    string content;
    address publisher;
    address[] authors;
    Status status;
    uint paperID;
}

enum Vote{
    NONE,
    ACCEPTED,
    REJECTED
}

enum ReviewResult{
    ACCEPTED,
    REJECTED
}

struct Review{
    string content;
    address reviewer;
    mapping(address=>Vote[]) votes;
    uint yesCount;
    uint noCount;
    ReviewResult result;
}