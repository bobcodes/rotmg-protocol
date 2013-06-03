package zavuguqep
{
[CLASS453]   import tysenyzy.Zovisis;
   import ferozosyf.Jogohyh;
   import dylaqezo.Buzykoga;
   import dylaqezo.Vusun;
   import guvakipe.Guc;
   import vinirudel.Wukyva;
   import vinirudel.Heqodeno;
   import dutes.Zevazogo;
   import qypupet.Sikyvuvus;
   import daloraf.Walafe;
   import pigeguwo.Jazyv;
   import daloraf.Humy;
   import dugahymu.Silevuq;
   import jego.Ludiporos;
   import com.company.assembleegameclient.util.Kevozavow;
   import com.company.assembleegameclient.map.Map;
   import aaa.ActionMapperAbstract;
   import kuzycyw.Mygisyqoc;
   import com.company.assembleegameclient.objects.OneWayContainer;
   import com.company.assembleegameclient.objects.Container;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import daloraf.Fiboqumag;
   import ferozosyf.Pele;
   import ferozosyf.Licuboter;
   import aaa.Parameters;
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.objects.Player;


   public class Fylipi extends Zovisis
   {
      public function Fylipi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Jogohyh;

      public var fabemus:Buzykoga;

      public var jojun:Vusun;

      public var tutel:Guc;

      public var fysufapav:Wukyva;

      public var kena:Heqodeno;

      public var showToolTip:Zevazogo;

      public var qidogy:Sikyvuvus;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.addEventListener(Walafe.ITEM_MOVE,this.retizakyl);
         this.view.addEventListener(Walafe.ITEM_SHIFT_CLICK,this.zihiju);
         this.view.addEventListener(Walafe.ITEM_DOUBLE_CLICK,this.wiryziga);
         this.view.addEventListener(Walafe.ITEM_CTRL_CLICK,this.lyq);
         this.view.nanopemek.add(this.tuwus);
         return;
      }

      private function tuwus(param1:Jazyv) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.showToolTip.dispatch(param1);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super.destroy();
         return;
      }

      private function retizakyl(param1:Walafe) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:Humy = null;
         var _loc5_:Silevuq = null;
         var _loc6_:* = 0;
         var _loc7_:Ludiporos = null;
         var _loc2_:Humy = param1.tile;
         var _loc3_:* = Kevozavow.pojeni(_loc2_.fofuqodih(),Silevuq,Humy,Ludiporos,Map);
         if(_loc2_.mymezit()==Guc.deg||_loc2_.mymezit()==Guc.jypaluw&&!Boolean(_loc3_ as Ludiporos))
         {
            this.nejegezy(param1);
            return;
         }
         if(_loc3_ is Humy)
         {
            _loc4_=_loc3_ as Humy;
            if(this.gofided(_loc2_,_loc4_))
            {
               this.kus(_loc2_,_loc4_);
            }
         }
         else
         {
            if(_loc3_ is Map)
            {
               this.kodow(_loc2_);
            }
            else
            {
               if(_loc3_ is Silevuq)
               {
                  _loc5_=_loc3_ as Silevuq;
                  _loc6_=_loc2_.kotifi.curPlayer.nextAvailableInventorySlot();
                  if(_loc6_!=-1)
                  {
                     ActionMapperAbstract.toryfuq.invSwap(this.view.curPlayer,_loc2_.kotifi.owner,_loc2_.nym,_loc2_.cawiluz.itemId,this.view.curPlayer,_loc6_,Mygisyqoc.kenyh);
                     _loc2_.setItem(Mygisyqoc.kenyh);
                     _loc2_.mipi(this.view.curPlayer);
                  }
               }
               else
               {
                  if(_loc3_ is Ludiporos)
                  {
                     _loc7_=_loc3_ as Ludiporos;
                     if(!_loc7_.tadypa)
                     {
                        this.qidogy.sic=_loc2_.nym;
                        this.qidogy.dede=_loc2_.kotifi.owner.objectId_;
                        _loc7_.setItem(_loc2_.mymezit());
                        _loc7_.zocipop(this.rebul(_loc2_));
                        _loc2_.setItem(Mygisyqoc.kenyh);
                        _loc2_.blockingItemUpdates=true;
                        _loc2_.mipi(this.view.curPlayer);
                     }
                  }
               }
            }
         }
         _loc2_.pimur();
         return;
      }

      private function rebul(param1:Humy) : Function {
         var itemSlot:Humy = param1;
         return new function():void
         {
            itemSlot.blockingItemUpdates=false;
            return;
         };
      }

      private function nejegezy(param1:Walafe) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Humy = param1.tile;
         var _loc3_:* = Kevozavow.pojeni(_loc2_.fofuqodih(),Silevuq,Map);
         if(_loc3_ is Map)
         {
            this.kodow(_loc2_);
         }
         else
         {
            if(_loc3_ is Silevuq)
            {
               this.sugih(_loc2_);
            }
         }
         _loc2_.pimur();
         return;
      }

      private function sugih(param1:Humy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!ActionMapperAbstract.toryfuq||!this.view.vaq||!param1||this.tutel.ciwuta(param1.mymezit()).vico<=this.fysufapav.palaliz.map.player_.getPotionCount(param1.mymezit()))
         {
            return;
         }
         ActionMapperAbstract.toryfuq.invSwapPotion(this.view.curPlayer,this.view.owner,param1.nym,param1.cawiluz.itemId,this.view.curPlayer,Guc.zef(param1.mymezit()),Mygisyqoc.kenyh);
         param1.setItem(Mygisyqoc.kenyh);
         param1.mipi(this.view.curPlayer);
         return;
      }

      private function gofided(param1:Humy, param2:Humy) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!param1.canHoldItem(param2.mymezit()))
         {
            return false;
         }
         if(!param2.canHoldItem(param1.mymezit()))
         {
            return false;
         }
         if(Jogohyh(param2.parent).owner is OneWayContainer)
         {
            return false;
         }
         if((param1.blockingItemUpdates)||(param2.blockingItemUpdates))
         {
            return false;
         }
         return true;
      }

      private function kodow(param1:Humy) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:Container = null;
         var _loc5_:Vector.<int> = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc2_:Boolean = ObjectLibrary.nadopo(param1.cawiluz.itemId);
         var _loc3_:Container = this.view.owner as Container;
         if(this.view.owner==this.view.curPlayer||((_loc3_)&&(_loc3_.ownerId_==this.view.curPlayer.accountId_))&&(!_loc2_))
         {
            _loc4_=this.fabemus.wavicu as Container;
            if(_loc4_)
            {
               _loc5_=_loc4_.wasidu;
               _loc6_=_loc5_.length;
               _loc7_=0;
               while(_loc7_<_loc6_)
               {
                  if(_loc5_[_loc7_]<0)
                  {
                     break;
                  }
                  _loc7_++;
               }
               if(_loc7_<_loc6_)
               {
                  this.tody(param1,_loc4_,_loc7_);
               }
               else
               {
                  ActionMapperAbstract.toryfuq.invDrop(this.view.owner,param1.nym,param1.mymezit());
               }
            }
            else
            {
               ActionMapperAbstract.toryfuq.invDrop(this.view.owner,param1.nym,param1.mymezit());
            }
         }
         param1.setItem(-1);
         return;
      }

      private function kus(param1:Fiboqumag, param2:Fiboqumag) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(!ActionMapperAbstract.toryfuq||!this.view.vaq||!param1||!param2)
         {
            return false;
         }
         ActionMapperAbstract.toryfuq.invSwap(this.view.curPlayer,this.view.owner,param1.nym,param1.cawiluz.itemId,param2.kotifi.owner,param2.nym,param2.cawiluz.itemId);
         var _loc3_:int = param1.mymezit();
         param1.setItem(param2.mymezit());
         param2.setItem(_loc3_);
         param1.mipi(this.view.curPlayer);
         param2.mipi(this.view.curPlayer);
         return true;
      }

      private function tody(param1:Fiboqumag, param2:Container, param3:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(!ActionMapperAbstract.toryfuq||!this.view.vaq||!param1||!param2)
         {
            return;
         }
         ActionMapperAbstract.toryfuq.invSwap(this.view.curPlayer,this.view.owner,param1.nym,param1.cawiluz.itemId,param2,param3,-1);
         param1.setItem(Mygisyqoc.kenyh);
         return;
      }

      private function zihiju(param1:Walafe) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Humy = param1.tile;
         if(_loc2_.kotifi is Pele||_loc2_.kotifi is Licuboter)
         {
            ActionMapperAbstract.toryfuq.useItem_new(_loc2_.kotifi.owner,_loc2_.nym);
         }
         return;
      }

      private function lyq(param1:Walafe) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Humy = null;
         var _loc3_:* = 0;
         if(Parameters.data_.inventorySwap)
         {
            _loc2_=param1.tile;
            if(_loc2_.kotifi is Pele)
            {
               _loc3_=_loc2_.kotifi.curPlayer.swapInventoryIndex(this.kena.bykapise);
               if(_loc3_!=-1)
               {
                  ActionMapperAbstract.toryfuq.invSwap(this.view.curPlayer,_loc2_.kotifi.owner,_loc2_.nym,_loc2_.cawiluz.itemId,this.view.curPlayer,_loc3_,Mygisyqoc.kenyh);
                  _loc2_.setItem(Mygisyqoc.kenyh);
                  _loc2_.mipi(this.view.curPlayer);
               }
            }
         }
         return;
      }

      private function wiryziga(param1:Walafe) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Humy = param1.tile;
         if(this.boni(_loc2_))
         {
            this.sugih(_loc2_);
         }
         else
         {
            if(_loc2_.kotifi is Licuboter)
            {
               this.sutopob(_loc2_);
            }
            else
            {
               this.fyfawane(_loc2_);
            }
         }
         this.view.dotu();
         return;
      }

      private function boni(param1:Humy) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1.mymezit()==Guc.deg||param1.mymezit()==Guc.jypaluw;
      }

      private function vevyry(param1:Humy) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.view.curPlayer.nextAvailableInventorySlot();
         if(_loc2_!=-1)
         {
            ActionMapperAbstract.toryfuq.invSwap(this.view.curPlayer,this.view.owner,param1.nym,param1.cawiluz.itemId,this.view.curPlayer,_loc2_,Mygisyqoc.kenyh);
         }
         return;
      }

      private function sutopob(param1:Humy) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:GameObject = param1.kotifi.owner;
         var _loc3_:Player = this.view.curPlayer;
         var _loc4_:int = this.view.curPlayer.nextAvailableInventorySlot();
         if(_loc4_!=-1)
         {
            ActionMapperAbstract.toryfuq.invSwap(_loc3_,this.view.owner,param1.nym,param1.cawiluz.itemId,this.view.curPlayer,_loc4_,Mygisyqoc.kenyh);
         }
         else
         {
            ActionMapperAbstract.toryfuq.useItem_new(_loc2_,param1.nym);
         }
         return;
      }

      private function fyfawane(param1:Humy) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:GameObject = param1.kotifi.owner;
         var _loc3_:Player = this.view.curPlayer;
         var _loc4_:int = ObjectLibrary.pafynur(param1.mymezit(),_loc3_);
         if(_loc4_!=-1)
         {
            ActionMapperAbstract.toryfuq.invSwap(_loc3_,_loc2_,param1.nym,param1.mymezit(),_loc3_,_loc4_,_loc3_.wasidu[_loc4_]);
         }
         else
         {
            ActionMapperAbstract.toryfuq.useItem_new(_loc2_,param1.nym);
         }
         return;
      }
   }
[/CLASS]
}