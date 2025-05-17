# Product Owner's Handbook – Wiki Pratique pour Product Owner
**Auteur :** Atacan Demiralp  
**But du livre :** Créer un guide opérationnel pour PO basé sur l’expérience et la synthèse de plusieurs sources.

---

## 1. Rôle et posture du Product Owner
- Responsable de la **valeur livrée** par l'équipe Scrum.
- **Porte-parole des parties prenantes** (clients, utilisateurs, business).
- Gère, priorise et optimise le **Product Backlog**.
- Interface entre **vision stratégique** et **exécution technique**.

---

## 2. Fondamentaux à maîtriser

### A. Connaître son équipe Scrum
- Comprendre les compétences, la communication, la motivation de chacun.
- Travailler avec le **Scrum Master** pour aligner objectifs et méthodes.

### B. Clarifier sa légitimité (Delegation Board)
- Définir qui décide quoi avec les parties prenantes.
- Outil : **Delegation Poker**.

---

## 3. Construire une vision produit claire

### A. Vision, stratégie, roadmap
- **Vision :** Pourquoi ce produit ?
- **Stratégie :** Comment y arriver ?
- **Roadmap :** Étapes et jalons temporels.

### B. Product Vision Board – 5 dimensions :
- **Vision**
- **Cible**
- **Besoins**
- **Produit**
- **Objectifs business**

### C. Validation
- Vision claire, inspirante, réalisable.
- Alignée avec la stratégie de l’entreprise.

---

## 4. Maximiser la valeur

### A. Définir la valeur
- Valeur = performance, fiabilité, UX, conversion...
- À définir avec les stakeholders.

### B. Techniques de priorisation
- **MoSCoW**
- **Valeur / Coût**
- **Pareto (80/20)**

---

## 5. De la vision au backlog

### A. Roadmap produit
- Prévoir des **dates cibles** (oui, même en agile).
- Releases progressives pour feedback itératif.

### B. Story Map
- Représente les fonctionnalités, epics, user stories.
- Utile pour prioriser visuellement.

### C. Release Plan
- Quelles stories sont livrées, quand, et avec quels objectifs mesurables.

---

## 6. Création et gestion du backlog

### A. Product Backlog
- Toujours vivant, évolutif.
- Chaque item = ID, priorité, estimation, “Done”.

### B. User Stories (formule)
> En tant que [persona], je veux [fonctionnalité] afin de [bénéfice attendu].

### C. Critères d’acceptation (INVEST)
- **I**ndépendant
- **N**égociable
- **V**alorisé
- **E**stimable
- **S**imple à tester
- **T**rès clair

---

## 7. Sprints et planification

### A. Sprint Planning
- Estimations via **Planning Poker**.
- Définition du **Sprint Goal**.
- Création du **Sprint Backlog**.

### B. Monitoring
- **Burn-down chart** pour suivre l’avancement.
- Suivi de la **vélocité**.

---

## 8. Cérémonies clés

### A. Sprint Review
- Démo de l’incrément.
- Feedback des parties prenantes.
- Mise à jour du backlog.

### B. Rétrospective
- Amélioration continue sur : personnes, processus, outils.
- Actions concrètes à tester au sprint suivant.

---

## 9. Gérer la dette technique
- Trop de pression = risque de dette technique.
- Intégrer la qualité dans l’estimation des stories.
- “Definition of Done” stricte (tests, revue de code, pas de bug).

---

## 10. Outils recommandés
- Product Vision Board
- Stakeholder Map
- Delegation Board
- Story Map
- Release Plan
- Product Backlog (avec MoSCoW, WSJF)
- Burn-down Chart

---

## Conclusion
Ce guide est un **kit de survie du Product Owner** :
- Structure ta démarche produit,
- Clarifie tes responsabilités,
- Améliore la collaboration,
- **Maximise la valeur à chaque sprint**.# Template de User Stories – CyberArk (PAM)

## 🎯 Modèle de base (format Connextra)

```
En tant que <rôle ou persona>,
Je veux <action fonctionnelle>,
Afin de <valeur métier / objectif de sécurité>.
```

---

## ⚙️ Verbes recommandés

**Sécurité :** restreindre, auditer, crypter, appliquer, détecter  
**Conformité :** tracer, consigner, valider, certifier, notifier  
**Comptes privilégiés :** onboarder, désactiver, réinitialiser, surveiller  
**Sessions & accès :** accéder, escalader, rejouer, approuver, enregistrer  
**Intégrations :** synchroniser, automatiser, déléguer, intégrer

---

## ✅ Exemples de User Stories

### 1. Onboarding automatique
En tant qu’analyste sécurité,  
Je veux onboarder automatiquement les comptes privilégiés Unix,  
Afin de renforcer la visibilité et réduire les accès non gérés.

### 2. Audit des sessions PSM
En tant qu’auditeur interne,  
Je veux pouvoir rejouer une session enregistrée dans PSM,  
Afin d’analyser les activités d’un administrateur soupçonné.

### 3. Rotation régulière
En tant qu’administrateur PAM,  
Je veux automatiser la rotation des comptes root chaque 24h,  
Afin de limiter les risques de compromission persistante.

### 4. Politique RBAC
En tant que gestionnaire IT,  
Je veux appliquer des politiques RBAC sur les coffres DevOps,  
Afin de limiter les accès aux membres autorisés uniquement.

### 5. Alerte d’échec d’accès
En tant que membre du SOC,  
Je veux recevoir une alerte en cas d’échec de tentative d’accès à un coffre sensible,  
Afin de réagir rapidement à un potentiel incident.

---

## ✔️ Critères d’acceptation types

- Le compte apparaît dans le portail PVWA après onboarding.  
- Le mot de passe est réinitialisé automatiquement selon la politique.  
- Une session PSM horodatée est disponible dans le centre d’audit.  
- Le rôle RBAC restreint correctement les accès aux coffres désignés.  
- Une alerte de tentative d’accès est générée dans Splunk ou SIEM.

---

## 🔍 Checklist INVEST

| Critère      | Signification       | Question de vérification                         |
|--------------|---------------------|--------------------------------------------------|
| I - Indépendante | Déployable seule   | Bloque-t-elle d’autres stories ?                 |
| N - Négociable   | Flexible           | Le besoin est-il figé ou ouvert à discussion ?   |
| V - Valuable     | Apporte de la valeur | Impacte-t-elle la sécurité ou la conformité ?   |
| E - Estimable    | Évaluable          | L’équipe peut-elle l’estimer techniquement ?     |
| S - Small        | Petite              | Est-elle réalisable en moins d’un Sprint ?       |
| T - Testable     | Testable            | Peut-on vérifier le résultat via logs ou UI ?    |

---

## 📦 Bonnes pratiques spécifiques CyberArk

- Toujours ancrer la story dans un **coffre, un compte ou un accès précis**.  
- Clarifier le **besoin métier** : sécurité, conformité, gouvernance.  
- Ajouter une **preuve vérifiable** : logs, alertes, champs d’audit.  
- Anticiper les **intégrations** (LDAP, Jenkins, API REST).  
- Définir les **personas techniques** : SOC, Admin, DevOps, Auditeur.  
- Éviter les verbes techniques inutiles ("configurer un fichier", etc.).  
- Prioriser selon **valeur métier**, pas complexité technique.  

---

## 🧠 Astuce pour enrichir vos stories

> “Une bonne user story CyberArk protège, trace ou simplifie — sinon elle distrait.”

---

## 📄 Format à copier-coller pour Jira ou Notion

**Titre :** `Rotation automatique des comptes root`  
**Story :**  
```
En tant qu’administrateur PAM,  
Je veux automatiser la rotation des comptes root tous les jours,  
Afin de limiter les risques de compromission persistante.
```  
**Critères d’acceptation :**  
- Le mot de passe est changé toutes les 24h.  
- L’action est tracée dans l’audit trail.  
- Une alerte est envoyée en cas d’échec de rotation.  

---


