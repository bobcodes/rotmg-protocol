package furybyfib
{
   import tytojonib.Kyjefe;
   import copano.Byz;
   import lemugo.Kaqywi;
   import lemugo.Wokycuku;
   import wahyqise.Tysyc;
   import micac.Ciqyl;
   import micac.Josuba;
   import pomujukir.Cirumy;
   import fanij.Mitat;
   import loqaj.Pamave;
   import mavew.Qyryl;
   import loqaj.Kuk;
   import cerywij.Qedicudo;
   import kyjunys.Qajul;
   import com.company.assembleegameclient.util.Lylyto;
   import com.company.assembleegameclient.map.Map;
   import aaa.ActionMapperAbstract;
   import pilage.Tope;
   import com.company.assembleegameclient.objects.OneWayContainer;
   import com.company.assembleegameclient.objects.Container;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import loqaj.Lokaz;
   import copano.Jofedofuq;
   import copano.Gykafuzi;
   import aaa.RotmgParameters.RotmgParameters;
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.objects.Player;


   public class Coqobu extends Kyjefe
   {
      public function Coqobu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Byz;

      public var fisokami:Kaqywi;

      public var kejisacok:Wokycuku;

      public var dugyno:Tysyc;

      public var fer:Ciqyl;

      public var pyrikaky:Josuba;

      public var showToolTip:Cirumy;

      public var hibuc:Mitat;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.addEventListener(Pamave.ITEM_MOVE,this.gyqoluzom);
         this.view.addEventListener(Pamave.ITEM_SHIFT_CLICK,this.fodopy);
         this.view.addEventListener(Pamave.ITEM_DOUBLE_CLICK,this.ActionMapperAbstractahuk);
         this.view.addEventListener(Pamave.ITEM_CTRL_CLICK,this.mubir);
         this.view.fykig.add(this.tokyji);
         return;
      }

      private function tokyji(param1:Qyryl) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.showToolTip.dispatch(param1);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super.destroy();
         return;
      }

      private function gyqoluzom(param1:Pamave) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:Kuk = null;
         var _loc5_:Qedicudo = null;
         var _loc6_:* = 0;
         var _loc7_:Qajul = null;
         var _loc2_:Kuk = param1.tile;
         var _loc3_:* = Lylyto.porocif(_loc2_.cazujubud(),Qedicudo,Kuk,Qajul,Map);
         if(_loc2_.qavowykez()==Tysyc.sanan||_loc2_.qavowykez()==Tysyc.lenem&&!Boolean(_loc3_ as Qajul))
         {
            this.mesyhofip(param1);
            return;
         }
         if(_loc3_ is Kuk)
         {
            _loc4_=_loc3_ as Kuk;
            if(this.qahaqob(_loc2_,_loc4_))
            {
               this.jotuky(_loc2_,_loc4_);
            }
         }
         else
         {
            if(_loc3_ is Map)
            {
               this.vily(_loc2_);
            }
            else
            {
               if(_loc3_ is Qedicudo)
               {
                  _loc5_=_loc3_ as Qedicudo;
                  _loc6_=_loc2_.dirisisy.curPlayer.nextAvailableInventorySlot();
                  if(_loc6_!=-1)
                  {
                     ActionMapperAbstract.wisunoc.invSwap(this.view.curPlayer,_loc2_.dirisisy.owner,_loc2_.binaho,_loc2_.soqugarol.itemId,this.view.curPlayer,_loc6_,Tope.puheqah);
                     _loc2_.setItem(Tope.puheqah);
                     _loc2_.wavuciwiz(this.view.curPlayer);
                  }
               }
               else
               {
                  if(_loc3_ is Qajul)
                  {
                     _loc7_=_loc3_ as Qajul;
                     if(!_loc7_.poqiq)
                     {
                        this.hibuc.bykano=_loc2_.binaho;
                        this.hibuc.mypu=_loc2_.dirisisy.owner.objectId_;
                        _loc7_.setItem(_loc2_.qavowykez());
                        _loc7_.qoleg(this.lizur(_loc2_));
                        _loc2_.setItem(Tope.puheqah);
                        _loc2_.blockingItemUpdates=true;
                        _loc2_.wavuciwiz(this.view.curPlayer);
                     }
                  }
               }
            }
         }
         _loc2_.syfoh();
         return;
      }

      private function lizur(param1:Kuk) : Function {
         var itemSlot:Kuk = param1;
         return new function():void
         {
            itemSlot.blockingItemUpdates=false;
            return;
         };
      }

      private function mesyhofip(param1:Pamave) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Kuk = param1.tile;
         var _loc3_:* = Lylyto.porocif(_loc2_.cazujubud(),Qedicudo,Map);
         if(_loc3_ is Map)
         {
            this.vily(_loc2_);
         }
         else
         {
            if(_loc3_ is Qedicudo)
            {
               this.suhawy(_loc2_);
            }
         }
         _loc2_.syfoh();
         return;
      }

      private function suhawy(param1:Kuk) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!ActionMapperAbstract.wisunoc||!this.view.dymyd||!param1||this.dugyno.hotyzycyc(param1.qavowykez()).fukuk<=this.fer.qyhowo.map.player_.getPotionCount(param1.qavowykez()))
         {
            return;
         }
         ActionMapperAbstract.wisunoc.invSwapPotion(this.view.curPlayer,this.view.owner,param1.binaho,param1.soqugarol.itemId,this.view.curPlayer,Tysyc.nyh(param1.qavowykez()),Tope.puheqah);
         param1.setItem(Tope.puheqah);
         param1.wavuciwiz(this.view.curPlayer);
         return;
      }

      private function qahaqob(param1:Kuk, param2:Kuk) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!param1.canHoldItem(param2.qavowykez()))
         {
            return false;
         }
         if(!param2.canHoldItem(param1.qavowykez()))
         {
            return false;
         }
         if(Byz(param2.parent).owner is OneWayContainer)
         {
            return false;
         }
         if((param1.blockingItemUpdates)||(param2.blockingItemUpdates))
         {
            return false;
         }
         return true;
      }

      private function vily(param1:Kuk) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:Container = null;
         var _loc5_:Vector.<int> = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc2_:Boolean = ObjectLibrary.mocymuge(param1.soqugarol.itemId);
         var _loc3_:Container = this.view.owner as Container;
         if(this.view.owner==this.view.curPlayer||((_loc3_)&&(_loc3_.ownerId_==this.view.curPlayer.accountId_))&&(!_loc2_))
         {
            _loc4_=this.fisokami.gesoky as Container;
            if(_loc4_)
            {
               _loc5_=_loc4_.zosig;
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
                  this.kosu(param1,_loc4_,_loc7_);
               }
               else
               {
                  ActionMapperAbstract.wisunoc.invDrop(this.view.owner,param1.binaho,param1.qavowykez());
               }
            }
            else
            {
               ActionMapperAbstract.wisunoc.invDrop(this.view.owner,param1.binaho,param1.qavowykez());
            }
         }
         param1.setItem(-1);
         return;
      }

      private function jotuky(param1:Lokaz, param2:Lokaz) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(!ActionMapperAbstract.wisunoc||!this.view.dymyd||!param1||!param2)
         {
            return false;
         }
         ActionMapperAbstract.wisunoc.invSwap(this.view.curPlayer,this.view.owner,param1.binaho,param1.soqugarol.itemId,param2.dirisisy.owner,param2.binaho,param2.soqugarol.itemId);
         var _loc3_:int = param1.qavowykez();
         param1.setItem(param2.qavowykez());
         param2.setItem(_loc3_);
         param1.wavuciwiz(this.view.curPlayer);
         param2.wavuciwiz(this.view.curPlayer);
         return true;
      }

      private function kosu(param1:Lokaz, param2:Container, param3:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(!ActionMapperAbstract.wisunoc||!this.view.dymyd||!param1||!param2)
         {
            return;
         }
         ActionMapperAbstract.wisunoc.invSwap(this.view.curPlayer,this.view.owner,param1.binaho,param1.soqugarol.itemId,param2,param3,-1);
         param1.setItem(Tope.puheqah);
         return;
      }

      private function fodopy(param1:Pamave) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Kuk = param1.tile;
         if(_loc2_.dirisisy is Jofedofuq||_loc2_.dirisisy is Gykafuzi)
         {
            ActionMapperAbstract.wisunoc.useItem_new(_loc2_.dirisisy.owner,_loc2_.binaho);
         }
         return;
      }

      private function mubir(param1:Pamave) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Kuk = null;
         var _loc3_:* = 0;
         if(RotmgParameters.data_.inventorySwap)
         {
            _loc2_=param1.tile;
            if(_loc2_.dirisisy is Jofedofuq)
            {
               _loc3_=_loc2_.dirisisy.curPlayer.swapInventoryIndex(this.pyrikaky.kina);
               if(_loc3_!=-1)
               {
                  ActionMapperAbstract.wisunoc.invSwap(this.view.curPlayer,_loc2_.dirisisy.owner,_loc2_.binaho,_loc2_.soqugarol.itemId,this.view.curPlayer,_loc3_,Tope.puheqah);
                  _loc2_.setItem(Tope.puheqah);
                  _loc2_.wavuciwiz(this.view.curPlayer);
               }
            }
         }
         return;
      }

      private function ActionMapperAbstractahuk(param1:Pamave) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Kuk = param1.tile;
         if(this.rut(_loc2_))
         {
            this.suhawy(_loc2_);
         }
         else
         {
            if(_loc2_.dirisisy is Gykafuzi)
            {
               this.tegybywo(_loc2_);
            }
            else
            {
               this.fuf(_loc2_);
            }
         }
         this.view.pakojef();
         return;
      }

      private function rut(param1:Kuk) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1.qavowykez()==Tysyc.sanan||param1.qavowykez()==Tysyc.lenem;
      }

      private function cetut(param1:Kuk) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.view.curPlayer.nextAvailableInventorySlot();
         if(_loc2_!=-1)
         {
            ActionMapperAbstract.wisunoc.invSwap(this.view.curPlayer,this.view.owner,param1.binaho,param1.soqugarol.itemId,this.view.curPlayer,_loc2_,Tope.puheqah);
         }
         return;
      }

      private function tegybywo(param1:Kuk) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:GameObject = param1.dirisisy.owner;
         var _loc3_:Player = this.view.curPlayer;
         var _loc4_:int = this.view.curPlayer.nextAvailableInventorySlot();
         if(_loc4_!=-1)
         {
            ActionMapperAbstract.wisunoc.invSwap(_loc3_,this.view.owner,param1.binaho,param1.soqugarol.itemId,this.view.curPlayer,_loc4_,Tope.puheqah);
         }
         else
         {
            ActionMapperAbstract.wisunoc.useItem_new(_loc2_,param1.binaho);
         }
         return;
      }

      private function fuf(param1:Kuk) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:GameObject = param1.dirisisy.owner;
         var _loc3_:Player = this.view.curPlayer;
         var _loc4_:int = ObjectLibrary.tuni(param1.qavowykez(),_loc3_);
         if(_loc4_!=-1)
         {
            ActionMapperAbstract.wisunoc.invSwap(_loc3_,_loc2_,param1.binaho,param1.qavowykez(),_loc3_,_loc4_,_loc3_.zosig[_loc4_]);
         }
         else
         {
            ActionMapperAbstract.wisunoc.useItem_new(_loc2_,param1.binaho);
         }
         return;
      }
   }

}