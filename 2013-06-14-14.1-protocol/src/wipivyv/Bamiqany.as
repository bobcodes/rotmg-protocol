package wipivyv
{
   import dyca.Mes;
   import ducojoryn.Wakohiga;
   import fanij.Cun;
   import fanij.Namejaja;
   import jyhyzujyw.Lug;


   public class Bamiqany extends Object
   {
      public function Bamiqany() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var difas:Mes;

      private var pyhug:Wakohiga;

      private var message:Jybunez;

      private var qisow:Cun;

      private var fiku:Cun;

      public function fifav(param1:Jybunez) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.message=param1;
         this.pyhug=new Wakohiga();
         this.vyw();
         this.kil(param1);
         this.suqyp();
         return;
      }

      private function vyw() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Namejaja = this.difas.getInstance(Namejaja);
         this.qisow=_loc1_.vahunufi(this.message.zezana);
         this.qisow.qymido(this.message.ruso);
         this.pyhug.qisow=this.qisow;
         return;
      }

      private function kil(param1:Jybunez) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fiku=Cun.clone(this.qisow);
         this.fiku.qymido(param1.noze);
         this.pyhug.fiku=this.fiku;
         return;
      }

      private function suqyp() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lug = this.difas.getInstance(Lug);
         _loc1_.dispatch(this.pyhug);
         return;
      }
   }

}