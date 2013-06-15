package hilonec
{
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.ui.Nyre;
   import com.company.assembleegameclient.map.Remo;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Gymajyzu;
   import mukyrosu.Qanyduk;
   import flash.events.MouseEvent;
   import flash.events.Event;


   public class Tuwo extends Menu
   {
      public function Tuwo(param1:Remo, param2:Vector.<Player>) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.tubewehyg=new Vector.<Nyre>();
         super(3552822,16777215);
         this.map_=param1;
         this.botet=param2.concat();
         this.mahibehif=new Qanyduk();
         this.viqucuhoj();
         this.did();
         return;
      }

      private var tubewehyg:Vector.<Nyre>;

      private var jin:uint = 4;

      public var map_:Remo;

      public var botet:Vector.<Player>;

      public var qihodedor:Vazodav;

      public var wahygamuv:Gymajyzu;

      public var mahibehif:Qanyduk;

      private function did() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:Player = null;
         var _loc2_:Nyre = null;
         for each (_loc1_ in this.botet)
         {
            _loc2_=new Nyre(11776947,true,_loc1_);
            _loc2_.x=0;
            _loc2_.y=this.jin;
            addChild(_loc2_);
            this.tubewehyg.push(_loc2_);
            this.jin=this.jin+32;
         }
         return;
      }

      private function viqucuhoj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.map_.allowPlayerTeleport_)
         {
            this.qihodedor=new TeleportMenuOption(this.map_.player_);
            this.qihodedor.x=8;
            this.qihodedor.y=8;
            this.qihodedor.addEventListener(MouseEvent.CLICK,this.zoduceni);
            addChild(this.qihodedor);
            this.wahygamuv=new Gymajyzu(150,1842204);
            this.wahygamuv.x=6;
            this.wahygamuv.y=40;
            addChild(this.wahygamuv);
            this.jin=52;
         }
         return;
      }

      private function zoduceni(param1:Event) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Player = null;
         var _loc2_:Player = this.map_.player_;
         var _loc3_:Player = null;
         for each (_loc4_ in this.botet)
         {
            if(_loc2_.nopyv(_loc4_))
            {
               _loc3_=_loc4_;
               break;
            }
         }
         if(_loc3_!=null)
         {
            _loc2_.dozizan(_loc3_);
         }
         else
         {
            this.mahibehif.dispatch();
         }
         remove();
         return;
      }
   }

}