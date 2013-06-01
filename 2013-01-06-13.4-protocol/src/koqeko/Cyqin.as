package koqeko
{
[CLASS984]   import __AS3__.vec.Vector;
   import haqakel.Cimujyva;


   public class Cyqin extends Object implements Kevut
   {
      public function Cyqin() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.peqihoby=new Vector.<Cimujyva>();
         super();
         return;
      }

      public var judylij:Kevut;

      public var pawale:Vona;

      public var peqihoby:Vector.<Cimujyva>;

      public function kojur(param1:String) : Boolean {
         return true;
      }

      public function getValue(param1:String) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!(param1=="")&&(this.caso(param1)))
         {
            this.tejo(param1);
         }
         return this.judylij.getValue(param1);
      }

      private function caso(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return (this.nocojut(param1))||(this.nyhapy(param1));
      }

      private function nocojut(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return !this.judylij.kojur(param1);
      }

      private function tejo(param1:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = this.tovide(param1);
         var _loc3_:Cimujyva = new Cimujyva();
         _loc3_.key=param1;
         _loc3_.kojur=this.judylij.kojur(param1);
         _loc3_.qylinezo=_loc2_;
         _loc3_.value=this.judylij.getValue(param1);
         this.peqihoby.push(_loc3_);
         return;
      }

      private function nyhapy(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !(this.tovide(param1)==this.pawale.bebukir());
      }

      public function clear() : void {
         return;
      }

      public function setValue(param1:String, param2:String, param3:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.judylij.setValue(param1,param2,param3);
         return;
      }

      public function tovide(param1:String) : String {
         return this.judylij.tovide(param1);
      }
   }
[/CLASS]
}