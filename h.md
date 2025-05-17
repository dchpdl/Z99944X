# Fiche Mémo – Bien nommer une User Story (PO expérimenté)

## 🎯 Objectif
Un bon nom de story est plus qu'un identifiant : c'est une **boussole produit**. Il permet à tous (PO, Dev, QA, sécurité, stakeholders) de comprendre **en un coup d'œil** la valeur, la cible et l’intention de l’élément livré.

---

## ❌ Mauvais noms vs ✅ Bonnes formulations

| ❌ Mauvais nom technique/flou       | ⚠️ Pourquoi c’est un problème                 | ✅ Reformulation orientée valeur métier        |
|-------------------------------------|-----------------------------------------------|------------------------------------------------|
| Créer un script de rotation         | Trop technique, pas centré utilisateur        | Automatiser la rotation des comptes root pour réduire les accès persistants |
| Configurer PSM                      | Ambigu, centré outil                          | Permettre l’audit des sessions critiques via PSM |
| Ajout de règles dans Vault          | Sans valeur explicite                         | Sécuriser les coffres DevOps avec des règles RBAC |
| Correction bug PVWA                 | Invisible côté utilisateur                    | Corriger le bug de connexion PVWA pour fluidifier l’accès admin |
| Gérer les comptes Linux             | Trop générique                                | Onboarder les comptes root Linux pour activer la rotation automatique |
| Refactor code CyberArk              | Purement tech, sans impact exprimé            | Optimiser la récupération d’identifiants pour améliorer les performances PSM |

---

## ✅ Structure recommandée

**[Action observable] + [Objet ciblé] + [Bénéfice ou valeur attendue]**

Exemples :
- Automatiser la rotation des comptes root pour renforcer la conformité PCI-DSS  
- Permettre au SOC de rejouer les sessions PSM critiques pour les audits internes  
- Sécuriser les accès DevOps via des règles RBAC dédiées pour limiter la surface d’attaque  

---

## 🔧 Verbes utiles pour formuler les titres

| Catégorie       | Verbes recommandés                                          |
|------------------|--------------------------------------------------------------|
| Sécurité         | sécuriser, restreindre, tracer, auditer, verrouiller        |
| Livrable produit | livrer, activer, finaliser, mettre à disposition            |
| Technique utile  | automatiser, intégrer, corriger, optimiser, configurer      |
| Métier / Conformité | permettre, prouver, certifier, aligner, rationaliser    |

---

## 🧠 Conseil PO : le nom = la promesse

> *"Si je devais pitcher cette story à un stakeholder en 5 secondes, son titre devrait suffire à lui faire comprendre ce qu’on livre, pour qui, et pourquoi."*

En tant que PO, j’utilise souvent cette astuce :
- Lire les noms des stories en *review* sans leur description.
- Si l’équipe ou le stakeholder ne comprend pas leur valeur à la lecture du titre : je les reformule.

---

## ✍️ À compléter si besoin...

Tu peux enrichir chaque nom avec :
- **un contexte métier ou risque** (“pour éviter les accès non gérés”)
- **une contrainte réglementaire** (“afin de se conformer à ISO27001”)
- **un impact mesurable** (“pour réduire les escalades manuelles de 80 %”)

---

> “Une story bien nommée est autoporteuse. Elle aligne l’équipe, informe les parties prenantes et sert même de documentation vivante.”