package byzany
{
   import __AS3__.vec.Vector;
   import heko.Vubukudif;


   public class Lykyqe extends Object implements Nagumy
   {
      public function Lykyqe() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fejedu=new Vector.<Vubukudif>();
         super();
         return;
      }

      public var soduqeh:Nagumy;

      public var popa:Qopel;

      public var fejedu:Vector.<Vubukudif>;

      public function rot(param1:String) : Boolean {
         return true;
      }

      public function getValue(param1:String) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!(param1=="")&&(this.fyzy(param1)))
         {
            this.muduka(param1);
         }
         return this.soduqeh.getValue(param1);
      }

      private function fyzy(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return (this.pajyf(param1))||(this.geduti(param1));
      }

      private function pajyf(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !this.soduqeh.rot(param1);
      }

      private function muduka(param1:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = this.hymaceli(param1);
         var _loc3_:Vubukudif = new Vubukudif();
         _loc3_.key=param1;
         _loc3_.rot=this.soduqeh.rot(param1);
         _loc3_.buwajuw=_loc2_;
         _loc3_.value=this.soduqeh.getValue(param1);
         this.fejedu.push(_loc3_);
         return;
      }

      private function geduti(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !(this.hymaceli(param1)==this.popa.liw());
      }

      public function clear() : void {
         return;
      }

      public function setValue(param1:String, param2:String, param3:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.soduqeh.setValue(param1,param2,param3);
         return;
      }

      public function hymaceli(param1:String) : String {
         return this.soduqeh.hymaceli(param1);
      }
   }

}