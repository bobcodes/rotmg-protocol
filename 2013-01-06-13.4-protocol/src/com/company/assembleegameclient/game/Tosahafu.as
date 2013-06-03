package com.company.assembleegameclient.game
{
[CLASS146]   import flash.display.Sprite;
   import tinava.Dab;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import com.company.assembleegameclient.map.Vidowaty;
   import dylaqezo.Vusun;
   import tidi.Vepel;
   import com.company.assembleegameclient.map.Fot;
   import aaa.ActionMapperAbstract;
   import com.company.assembleegameclient.objects.GameObject;
   import mywyvuryw.MapInfoMsg;


   public class Tosahafu extends Sprite
   {
      public function Tosahafu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.moveRecords_=new Hiqose();
         this.camera_=new Fot();
         super();
         return;
      }

      public const closed:Dab = new Dab();

      public var isEditor:Boolean;

      public var tutorial_:Tutorial;

      public var mui_:Vypatozi;

      public var lastUpdate_:int;

      public var moveRecords_:Hiqose;

      public var map:Vidowaty;

      public var model:Vusun;

      public var hudView:Vepel;

      public var camera_:Fot;

      public var gsc_:ActionMapperAbstract;

      public function initialize() : void {
         return;
      }

      public function setFocus(param1:GameObject) : void {
         return;
      }

      public function applyMapInfo(param1:MapInfoMsg) : void {
         return;
      }

      public function evalIsNotInCombatMapArea() : Boolean {
         return false;
      }
   }
[/CLASS]
}