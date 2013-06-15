package cycuka
{
   import __AS3__.vec.Vector;
   import komi.Naf;


   public class Sesahareh extends Object implements Sinaf
   {
      public function Sesahareh() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pynacema=new Vector.<Naf>();
         super();
         return;
      }

      public var ryvyhy:Sinaf;

      public var hyvitu:Voli;

      public var pynacema:Vector.<Naf>;

      public function nezuz(param1:String) : Boolean {
         return true;
      }

      public function getValue(param1:String) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!(param1=="")&&(this.vuqa(param1)))
         {
            this.votajy(param1);
         }
         return this.ryvyhy.getValue(param1);
      }

      private function vuqa(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return (this.lihefi(param1))||(this.lanupo(param1));
      }

      private function lihefi(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !this.ryvyhy.nezuz(param1);
      }

      private function votajy(param1:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = this.ropyra(param1);
         var _loc3_:Naf = new Naf();
         _loc3_.key=param1;
         _loc3_.nezuz=this.ryvyhy.nezuz(param1);
         _loc3_.siqohow=_loc2_;
         _loc3_.value=this.ryvyhy.getValue(param1);
         this.pynacema.push(_loc3_);
         return;
      }

      private function lanupo(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !(this.ropyra(param1)==this.hyvitu.hohizo());
      }

      public function clear() : void {
         return;
      }

      public function setValue(param1:String, param2:String, param3:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.ryvyhy.setValue(param1,param2,param3);
         return;
      }

      public function ropyra(param1:String) : String {
         return this.ryvyhy.ropyra(param1);
      }
   }

}