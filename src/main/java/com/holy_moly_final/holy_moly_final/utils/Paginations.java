package com.holy_moly_final.holy_moly_final.utils;

public class Paginations {
    private int pageScale = 10; // 페이지당 게시물 수
	private int blockScale = 5; // 블록당 페이지수
	private int currentPage; // 현재 페이지 번호
	private int previousPage; // 이전 페이지
	private int nextPage; // 다음 페이지
	private int totalPage; // 전체 페이지 갯수
	private int currentBlock; // 현재 페이지 블록 번호
	private int totalBlock; // 전체 페이지 블록 갯수
	private int pageBegin; // 페이지 내에서의 레코드 시작 번호
	private int pageEnd; // 페이지 내에서의 레코드 마지막 번호
	private int blockStart; // 페이지 블록 내에서의 시작 페이지 번호
	private int blockEnd; // 페이지 블록 내에서의 마지막 페이지 번호
	private int totalCount; // 페이지 블록 내에서의 마지막 페이지 번호

    public int getPageScale() {
        return pageScale;
    }

    public void setPageScale(int pageScale) {
        this.pageScale = pageScale;
    }

    public int getBlockScale() {
        return blockScale;
    }

    public void setBlockScale(int blockScale) {
        this.blockScale = blockScale;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getPreviousPage() {
        return previousPage;
    }

    public void setPreviousPage(int previousPage) {
        this.previousPage = previousPage;
    }

    public int getNextPage() {
        return nextPage;
    }

    public void setNextPage(int nextPage) {
        this.nextPage = nextPage;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getCurrentBlock() {
        return currentBlock;
    }

    public void setCurrentBlock(int currentBlock) {
        this.currentBlock = currentBlock;
    }

    public int getTotalBlock() {
        return totalBlock;
    }

    public void setTotalBlock(int totalBlock) {
        this.totalBlock = totalBlock;
    }

    public int getPageBegin() {
        return pageBegin;
    }

    public void setPageBegin(int pageBegin) {
        this.pageBegin = pageBegin;
    }

    public int getPageEnd() {
        return pageEnd;
    }

    public void setPageEnd(int pageEnd) {
        this.pageEnd = pageEnd;
    }

    public int getBlockStart() {
        return blockStart;
    }

    public void setBlockStart(int blockStart) {
        this.blockStart = blockStart;
    }

    public int getBlockEnd() {
        return blockEnd;
    }

    public void setBlockEnd(int blockEnd) {
        this.blockEnd = blockEnd;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    
}
