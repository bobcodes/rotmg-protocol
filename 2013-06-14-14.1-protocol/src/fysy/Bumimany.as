package fysy
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import mukyrosu.Qanyduk;
   import flash.filters.DropShadowFilter;
   import jediwip.Kybidu;
   import komi.Vibemod;


   public class Bumimany extends Sprite
   {
      public function Bumimany() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cytyfim=Zerafih;
         super();
         return;
      }

      private var cytyfim:Class;

      private const taq:Guzowoja = this.makeText();

      private const nur = this.cyhybymi();

      public const pyjaqolow:Qanyduk = new Qanyduk();

      private function makeText() : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Guzowoja = null;
         _loc1_=new Guzowoja().setSize(16).setColor(11776947).setBold(true);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         _loc1_.setStringBuilder(new Kybidu().setParams(Vibemod.ganez));
         _loc1_.textChanged.addOnce(this.layout);
         addChild(_loc1_);
         return _loc1_;
      }

      private function cyhybymi() : * {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = new this.cytyfim();
         addChild(_loc1_);
         return _loc1_;
      }

      public function layout() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.taq.y=height/2-this.taq.height/2+1;
         this.nur.x=this.taq.x+this.taq.width;
         this.pyjaqolow.dispatch();
         return;
      }
   }

}