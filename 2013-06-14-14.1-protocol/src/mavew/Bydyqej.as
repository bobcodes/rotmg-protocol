package mavew
{
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Nyre;
   import hivysif.Guzowoja;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;


   public class Bydyqej extends Qyryl
   {
      public function Bydyqej(param1:Vector.<Player>, param2:Boolean=true) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.tubewehyg=new Vector.<Nyre>();
         super(3552822,0.5,16777215,1,param2);
         this.ruc=new Guzowoja().setSize(12).setColor(11776947);
         this.ruc.setStringBuilder(new Kybidu().setParams(Vibemod.huti));
         this.ruc.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.ruc);
         this.cusiqyhal(param1);
         if(!param2)
         {
            filters=[];
         }
         ryfoc.push(this.ruc.textChanged);
         return;
      }

      public var botet:Vector.<Player> = null;

      private var tubewehyg:Vector.<Nyre>;

      private var ruc:Guzowoja;

      public function cusiqyhal(param1:Vector.<Player>) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:Player = null;
         var _loc4_:Nyre = null;
         this.clear();
         this.botet=param1.slice();
         if(this.botet==null||this.botet.length==0)
         {
            return;
         }
         var _loc2_:* = 0;
         for each (_loc3_ in param1)
         {
            _loc4_=new Nyre(11776947,true,_loc3_);
            _loc4_.x=0;
            _loc4_.y=_loc2_;
            addChild(_loc4_);
            this.tubewehyg.push(_loc4_);
            _loc2_=_loc2_+32;
         }
         this.ruc.x=width/2-this.ruc.width/2;
         this.ruc.y=_loc2_;
         draw();
         return;
      }

      private function clear() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Nyre = null;
         graphics.clear();
         for each (_loc1_ in this.tubewehyg)
         {
            removeChild(_loc1_);
         }
         this.tubewehyg.length=0;
         return;
      }
   }

}