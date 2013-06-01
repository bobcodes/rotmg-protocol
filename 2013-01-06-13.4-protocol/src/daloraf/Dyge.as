package daloraf
{
[CLASS1090]   import flash.filters.ColorMatrixFilter;
   import com.company.util.MoreColorUtil;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import flash.display.BitmapData;
   import kuzycyw.Mygisyqoc;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.objects.Player;
   import ferozosyf.Jogohyh;


   public class Dyge extends Humy
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Dyge(param1:int, param2:Jogohyh, param3:Boolean) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1,param2,param3);
         return;
      }

      private static const syjalofu:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.nuk(3552822));

      public var niq:Bitmap;

      public var itemType:int;

      private var cynyh:int;

      override public function canHoldItem(param1:int) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1<=0||this.itemType==ObjectLibrary.nefil(param1);
      }

      public function setType(param1:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:BitmapData = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         switch(null)
         {
            case Mygisyqoc.zalacukew:
               break;
            case Mygisyqoc.leba:
               _loc2_=AssetLibrary.zovy("lofiObj5",48);
               break;
            case Mygisyqoc.cebawakag:
               _loc2_=AssetLibrary.zovy("lofiObj5",96);
               break;
            case Mygisyqoc.doqelyk:
               _loc2_=AssetLibrary.zovy("lofiObj5",80);
               break;
            case Mygisyqoc.zow:
               _loc2_=AssetLibrary.zovy("lofiObj6",80);
               break;
            case Mygisyqoc.wefagyf:
               _loc2_=AssetLibrary.zovy("lofiObj6",112);
               break;
            case Mygisyqoc.mohi:
               _loc2_=AssetLibrary.zovy("lofiObj5",0);
               break;
            case Mygisyqoc.natofe:
               _loc2_=AssetLibrary.zovy("lofiObj5",32);
               break;
            case Mygisyqoc.jevesor:
               _loc2_=AssetLibrary.zovy("lofiObj5",64);
               break;
            case Mygisyqoc.filom:
               _loc2_=AssetLibrary.zovy("lofiObj",44);
               break;
            case Mygisyqoc.gewujil:
               _loc2_=AssetLibrary.zovy("lofiObj6",64);
               break;
            case Mygisyqoc.dore:
               _loc2_=AssetLibrary.zovy("lofiObj6",160);
               break;
            case Mygisyqoc.bokuvihig:
               _loc2_=AssetLibrary.zovy("lofiObj6",32);
               break;
            case Mygisyqoc.godupek:
               _loc2_=AssetLibrary.zovy("lofiObj5",16);
               break;
            case Mygisyqoc.wepotat:
               _loc2_=AssetLibrary.zovy("lofiObj6",48);
               break;
            case Mygisyqoc.bisibizo:
               _loc2_=AssetLibrary.zovy("lofiObj6",96);
               break;
            case Mygisyqoc.semyw:
               _loc2_=AssetLibrary.zovy("lofiObj5",112);
               break;
            case Mygisyqoc.moj:
               _loc2_=AssetLibrary.zovy("lofiObj6",128);
               break;
            case Mygisyqoc.hujipaja:
               _loc2_=AssetLibrary.zovy("lofiObj6",0);
               break;
            case Mygisyqoc.warul:
               _loc2_=AssetLibrary.zovy("lofiObj6",16);
               break;
            case Mygisyqoc.cuc:
               _loc2_=AssetLibrary.zovy("lofiObj6",144);
               break;
            case Mygisyqoc.sygi:
               _loc2_=AssetLibrary.zovy("lofiObj6",176);
               break;
            case Mygisyqoc.pizyhopa:
               _loc2_=AssetLibrary.zovy("lofiObj6",192);
               break;
            case Mygisyqoc.vym:
               _loc2_=AssetLibrary.zovy("lofiObj3",540);
               break;
            case Mygisyqoc.giboc:
               _loc2_=AssetLibrary.zovy("lofiObj3",555);
               break;
         }
         if(_loc2_!=null)
         {
            this.niq=new Bitmap(_loc2_);
            this.niq.x=BORDER;
            this.niq.y=BORDER;
            this.niq.scaleX=4;
            this.niq.scaleY=4;
            this.niq.filters=[syjalofu];
            addChildAt(this.niq,0);
         }
         this.itemType=param1;
         return;
      }

      override public function setItem(param1:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Boolean = super.setItem(param1);
         if(_loc2_)
         {
            this.niq.visible=cawiluz.itemId<=0;
            this.qiqyrasa();
         }
         return _loc2_;
      }

      private function qiqyrasa() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:XML = null;
         this.cynyh=0;
         if(cawiluz.itemId>0)
         {
            _loc1_=ObjectLibrary.zedij[cawiluz.itemId];
            if((_loc1_)&&(_loc1_.hasOwnProperty("Usable")))
            {
               if(_loc1_.hasOwnProperty("MultiPhase"))
               {
                  this.cynyh=_loc1_.MpEndCost;
               }
               else
               {
                  this.cynyh=_loc1_.MpCost;
               }
            }
         }
         return;
      }

      public function updateDim(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         cawiluz.setDim((param1)&&param1.kyl<this.cynyh);
         return;
      }

      override protected function beginDragCallback() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.niq.visible=true;
         return;
      }

      override protected function endDragCallback() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.niq.visible=cawiluz.itemId<=0;
         return;
      }

      override protected function getBackgroundColor() : int {
         return 4539717;
      }
   }
[/CLASS]
}