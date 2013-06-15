package huw
{
   import __AS3__.vec.Vector;


   public class Zalesiwu extends Object implements Judilub
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zalesiwu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.index=0;
         this.pyfemaru();
         this.count=this.qopemumeq.length;
         this.botis();
         return;
      }

      public static var jebywus:Class = Zygec;

      private var qopemumeq:Vector.<String>;

      private var zory:Vector.<int>;

      private var index:int;

      private var count:int;

      public function qiraf() : String {
         var _loc1_:int = this.zory[this.index++%this.count];
         return this.qopemumeq[_loc1_];
      }

      private function pyfemaru() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         var _loc1_:XML = XML(new jebywus());
         this.qopemumeq=new Vector.<String>(0);
         for each (_loc2_ in _loc1_.Protip)
         {
            this.qopemumeq.push(_loc2_.toString());
         }
         this.count=this.qopemumeq.length;
         return;
      }

      private function botis() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Vector.<int> = new Vector.<int>(0);
         var _loc2_:* = 0;
         while(_loc2_<this.count)
         {
            _loc1_.push(_loc2_);
            _loc2_++;
         }
         this.zory=new Vector.<int>(0);
         while(_loc2_>0)
         {
            this.zory.push(_loc1_.splice(Math.floor(Math.random()*_loc2_--),1)[0]);
         }
         this.zory.fixed=true;
         return;
      }
   }

}