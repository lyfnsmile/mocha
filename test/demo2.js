var expect = require('chai').expect;
 
describe('Array', function(){
  before(function(){
    console.log('在测试之前运行');
  });
 
  describe('#indexOf()', function(){
    it('当值不存在时应该返回 -1', function(){
      expect([1,2,3].indexOf(4)).to.equal(-1);
    });
  });
});