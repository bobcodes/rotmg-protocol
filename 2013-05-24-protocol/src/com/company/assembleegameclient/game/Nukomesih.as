package com.company.assembleegameclient.game
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import com.company.assembleegameclient.map.Wuwa;
   import hotewa.Baqifa;
   import ruwysepyd.Jyjimagi;
   import com.company.assembleegameclient.map.Wypyj;
   import aaa.rotmg.action.mapping.RotMGActionMapperAbstract;
   import com.company.assembleegameclient.objects.GameObject;
   import quqe.Cinyl;


   public class Nukomesih extends Sprite
   {
      public function Nukomesih() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.moveRecords_=new Gum();
         this.camera_=new Wypyj();
         super();
         return;
      }

      public const closed:Hugyqufyq = new Hugyqufyq();

      public var isEditor:Boolean;

      public var tutorial_:Tutorial;

      public var mui_:Vub;

      public var lastUpdate_:int;

      public var moveRecords_:Gum;

      public var map:Wuwa;

      public var model:Baqifa;

      public var hudView:Jyjimagi;

      public var camera_:Wypyj;

      public var gsc_:RotMGActionMapperAbstract;

      public function initialize() : void {
         return;
      }

      public function setFocus(param1:GameObject) : void {
         return;
      }

      public function applyMapInfo(param1:Cinyl) : void {
         return;
      }

      public function evalIsNotInCombatMapArea() : Boolean {
         return false;
      }
   }

}